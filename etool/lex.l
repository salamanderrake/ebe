/*
   Example using Flex and Bison with Qt.
   Copyright (C) 2013  Gonzalo Exequiel Pedone

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with This program.  If not, see <http://www.gnu.org/licenses/>.

   Email   : hipersayan DOT x AT gmail DOT com
   Web-Site: http://github.com/hipersayanX/FlexBisonQt
*/

%{
#include <QtGui>
#include <QVariant>
#include <QHash>

// Also include the Bison generated header where the tokens are defined.
#include "parse.h"
extern QHash<QString,int> token_map;
%}

%%

 /* Parse Integer numbers */
-?[0-9]+ {
    // yylval and yytext are predefined variables generated by Flex.
    // yylval stores the value that will be sended to the parser.
    // yytext stores the string matched by Flex.
    yylval.QVariant_t = new QVariant();
    *yylval.QVariant_t = QString(yytext).toInt();
    qDebug() << "int" << QString(yytext).toInt();

    return INT;
}

 /* Parse float numbers */
-?([0-9]+\.[0-9]+|\.[0-9]+|[0-9]+\.) {
    yylval.QVariant_t = new QVariant();
    *yylval.QVariant_t = QString(yytext).toFloat();

    return FLOAT;
}

 /* Parse identifiers */
[\.a-zA-Z_][a-zA-Z_0-9]*  {
    yylval.QVariant_t = new QVariant();
    *yylval.QVariant_t = QString(yytext);
    QString id = QString(yytext).toLower();
    if ( token_map.contains(id) ) {
        qDebug() << "found" << id << token_map[id];
        return token_map[id];
    } else {
        qDebug() << "not found" << id << ID;
        return ID;
    }
}

 /* Parse string */
\"([^"\\]*|\\.)*\"|'([^'\\]*|\\.)*' {
    yylval.QVariant_t = new QVariant();
    /* QScriptEngine scriptEngine;
    *yylval.QVariant_t = scriptEngine.evaluate(QString(yytext)).toString(); */
    *yylval.QVariant_t = QString(yytext);

    return STRING;
}

[ \t\r\n]   //{ qDebug() << "Matched space"; }

\;[^\n]*\n  //{ qDebug() << "Matched comment"; }

.   { qDebug() << "char" << yytext[0]; return yytext[0]; }

%%
