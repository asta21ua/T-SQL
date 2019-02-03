--___________________________________________________________________________________________________________
                                   
--                                            Simple data types in T-SQL
--___________________________________________________________________________________________________________

--***************************************************ININGERS***********************************************
--**********************************************************************************************************

-- The key word DECLARE was used to declare some data type for example bit, int, varchar etc.
-- The key word PRINT was used to initialize the DECLAREED data type.
-- The key word SET was used to set a value for DECLAREED data type.   
-- The name would be declared by @ sign
--___________________________________________________________________________________________________________

-- The data type bit accept only values 0/falls or 1/true
PRINT 'Bit';
DECLARE @exebit bit = 0;
PRINT @exebit;

SET @exebit = 1;                                                                                 ;
PRINT @exebit;

SET @exebit = -4;          --ERROR
PRINT @exebit;             --The value would be the lase was set:1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
--___________________________________________________________________________________________________________
                                                                         
-- The data type TinyInt values range from 0 to 255                       

PRINT 'TinyInt';                                                             

DECLARE @exetinyInt TinyInt = 0;
PRINT @exetinyInt;

SET @exetinyInt = 255;
PRINT @exetinyInt;

SET @exetinyInt = 256; --ERROR: 
PRINT @exetinyInt;
--___________________________________________________________________________________________________________

-- The data type SmallInt values range from -32 768 to 32 767

PRINT 'SmallInt';

DECLARE @exesmallInt SmallInt = -32768;
PRINT @exesmallInt;

SET @exesmallInt = 32767;
PRINT @exesmallInt;      

SET @exesmallInt = 32768; --ERROR
PRINT @exesmallInt;
   
--____________________________________________________________________________________________________________


-- The data type Int values range from -2 147 483 648 to 2 147 483 647

PRINT 'Int';

DECLARE @exeInt Int = -2147483648;
PRINT @exeInt;

SET @exeInt = 2147483647;
PRINT @exeInt;

SET @exeInt = 2147483648;  --ERROR
PRINT @exeInt;
--____________________________________________________________________________________________________________


-- The data type BigInt values range from -9.223372036854799561 × 10^18 to 9.223372036854799561 × 10^18

PRINT 'BigInt';

DECLARE @exebigInt BigInt = 9223372036854775807;
PRINT @exebigInt;

SET @exebigInt = -9223372036854775808;
PRINT @exebigInt;

SET @exebigInt = 9223372036854775809; --ERROR
PRINT @exebigInt;  
  --__________________________________________________________________________________________________________

--******************************************************REALS*************************************************
--************************************************************************************************************

-- Float is using to set real and point numeric data types and  it is approximate.
-- The data type Float values range from -1.79Е+308 to 1.79Е+308
-- Syntax: Float [(n)], where n is the number of bits that are used to store the mantissa of the float number. 
-- If n is specified, it must be a value between 1 and 53. The default value of n is 53.
-- The Float type have 2 precision afte pont: 7 symbols (4 byte) and 15 symbols (8 byte)

PRINT 'Float';

DECLARE @exeFloat Float (26) = 1536.69;
PRINT @exeFloat;

SET @exeFloat = 45789632115486554.45457987863543545457;
PRINT @exeFloat;
--____________________________________________________________________________________________________________

-- Decimal/Numeric data type is used for fixed precision and scale numbers. 
-- It range from 10^38 +1 through 10^38 - 1. 
-- Syntax:  Decimal (p, s), where p is the maximum total number of decimal digits that will be stored,
-- both to the left and to the right of the decimal point.
-- It must be a value from 1 through the maximum precision of 38. The default is 18.
-- s is the number of decimal digits that will be stored to the right of the decimal point.
-- s must be a value from 0 through p and it can be specified only if p is specified.

PRINT 'Decimal';
DECLARE @exeDecimal Decimal (8,5);

SET @exeDecimal = 52.56789;
PRINT @exeDecimal;

SET @exeDecimal = 2.457892;   -- the last number was affected. 
PRINT @exeDecimal;
--____________________________________________________________________________________________________________

-- SmallMoney data type values range from - 214,748.3648 to 214,748.3647.  

PRINT 'SmallMoney'; 

DECLARE @exesmallMoney SmallMoney = -214748.3648;
PRINT @exesmallMoney;

SET @exesmallMoney = 214748.3648;  --ERROR: out of range
PRINT @exesmallMoney; 
--____________________________________________________________________________________________________________

-- Money data type values range from -2^63 to 2^63-1.

PRINT 'Money';

DECLARE @exeMoney Money = 12.2938;
PRINT @exeMoney;

SET @exeMoney = 5.4567;
PRINT @exeMoney;
--____________________________________________________________________________________________________________

--******************************************************TEXT**************************************************
--************************************************************************************************************

-- Char text data type symboles range form 1 to 8000.
-- Syntax: Char (n), where n is the amount of symbols.

PRINT 'Char'

DECLARE @exeChar Char(15) = 'Good day to you';
PRINT @exeChar;

SET @exeChar = 'Thank you, I am fine and you?'; -- the second part will be missed.
PRINT @exeChar;
--_____________________________________________________________________________________________________________

-- VarChar text data type symboles range form 1 to 2^31.
-- Syntax: VarChar (n), where n is the amount of symbols and also can be written like (max).

PRINT 'VarChar';
DECLARE @exeVarChar VarChar (max) = 'Thank you, I am fine and you?'
PRINT @exevarchar;

--_____________________________________________________________________________________________________________

-- NChar is text data type used for UNICODE, symboles range form 1 to 4000.
-- Syntax: NvarChar(n/max).

PRINT 'NChar';
DECLARE @exenChar NvarChar (7) = 'Привет!';
PRINT @exenChar;

--_____________________________________________________________________________________________________________

-- NvarChar is text data type used for UNICODE, symboles range form 1 to 2^31.
-- Syntax: NvarChar (n/max).

PRINT 'NvarChar';
DECLARE @exenvarChar NvarChar (max) = 'Буря мглою небо кроет,
Вихри снежные крутя;
То, как зверь, она завоет,
То заплачет, как дитя,
То по кровле обветшалой
Вдруг соломой зашумит,
То, как путник запоздалый,
К нам в окошко застучит.
Наша ветхая лачужка
И печальна и темна.
Что же ты, моя старушка,
Приумолкла у окна?
Или бури завываньем
Ты, мой друг, утомлена,
Или дремлешь под жужжаньем
Своего веретена?...'

PRINT @exenvarChar;
 
--*************************************************DATE and TIME**********************************************
--************************************************************************************************************

-- DateTime value range form 1 of January 1753 to 31 of December 9999.
-- CAST is used to express an expression AS data_type.
-- CURRENT_TIMESTAMP is used to show up the current date and time.  

PRINT 'DateTime';

DECLARE @exedateTime DateTime = CAST ('2015-04-23 10:12:29.1' AS DateTime);
PRINT @exedateTime;

SET @exedateTime = CURRENT_TIMESTAMP;
PRINT @exedateTime;
--_____________________________________________________________________________________________________________

-- DateTime2 value range form 1 of January 1 to 31 of December 9999.
-- Syntax: DateTime (n), where n is the precision to 100 nanoseconds.

PRINT 'DateTime2'

DECLARE @exedateTime2 DateTime2 = CAST ('1998-03-08 15:45:59.12345679' AS DateTime2);
PRINT @exeDateTime2;

SET @exedateTime2 = CURRENT_TIMESTAMP;
PRINT @exedateTime2;
--_____________________________________________________________________________________________________________

-- SmallDateTime value range form 1 of January 1900 to 6 June 2079.

PRINT 'SmallDateTime';

DECLARE @exesmalldateTime SmallDateTime = CAST('2002-12-20 16:01:26' AS SmallDateTime)
PRINT @exesmalldatetime;  

SET @exesmalldatetime = CURRENT_TIMESTAMP;
PRINT @exesmalldatetime;
--_____________________________________________________________________________________________________________

-- DateTimeOffSet value range form 1 of January 1 to 31 of December 9999.
-- It shows the time in 24H format.
-- Syntax: DateTimeOffSet (n), where n is the precision to 100 nanoseconds.

PRINT 'DateTimeOffSet';

DECLARE @exedatetimeoffSet DateTimeOffSet (7) = CAST ('1990-03-08 15:45:59.1234568 +10:12' AS DateTimeOffSet);
PRINT @exedatetimeoffSet; 

SET @exedatetimeoffSet = CURRENT_TIMESTAMP;
Print @exedatetimeoffSet;
--_____________________________________________________________________________________________________________

-- Date value range form 1 of January 1 to 31 of December 9999.

DECLARE @exeDate Date = CAST ('2011-11-12 13:20:36.5689' AS Date);
PRINT @exeDate;

SET @exeDate = CURRENT_TIMESTAMP;
PRINT @exeDate;
--_____________________________________________________________________________________________________________

-- Time Syntax: Time (n), where n is the precision to 100 nanoseconds.

PRINT 'Time';
DECLARE @exeTime Time = CAST ('2014-01-15 23:25:45.23598' AS TIME);
PRINT @exeTime;

SET @exeTime = CURRENT_TIMESTAMP;
PRINT @exeTime;

--*****************************************************BINARY*************************************************
--************************************************************************************************************
-- Binary data type values range form 1 to 8000.
-- Syntax: Binary (n), where n determines the maximum number of bytes.  
PRINT 'Binary'

DECLARE @exeBinary Binary (1) = 16;
PRINT @exeBinary;
--_____________________________________________________________________________________________________________

-- VarBinary data type values range form 1 to 2^31.
-- Syntax: VarBinary(n/max).
PRINT 'VarBinary'

DECLARE @varBinary VarBinary(max) = 2147483647;
PRINT @varBinary;

--___________________________________________________________________________________________________________
                                   
--                                            Arithmetic Operator in T-SQL
--___________________________________________________________________________________________________________

-- SELECT <Expression>[arithmetic operator] <expression>...
-- FROM [table_name] 
-- WHERE [expression];

DECLARE @x int = 13, @z int = 5;

-- + (Addition)
SELECT @x + @z;         -- 18 

-- - (Subtraction) 
SELECT @x - @z;         -- 8

-- * (Multiplication)

SELECT @x * @z;         -- 65

-- / (Division)

SELECT @x / @z;          --2 

-- % (Modulo)
SELECT  @x % @z;         --3
--___________________________________________________________________________________________________________

-- Text Addition
SELECT 'Good day to you! ' + 'How are you today?' -- "Good day to you! How are you today?"

-- Data and Time Addition
DECLARE @example DateTime = '20150415 12:23';
SELECT @example + 2.56; -- 2015-04-18 01:49:24.000 

-- Other examples
SELECT 53-23;           -- 30  
SELECT 2*6              -- 12
SELECT 36.5/5           -- 7.300
SELECT 5.4%2            -- 1.4