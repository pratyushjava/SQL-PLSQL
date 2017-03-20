CREATE OR REPLACE PROCEDURE net_order_amt
					(
						productCode number,
						orderAmt number
					)
IS

	result number;	
	minAmt number;
	discnt number;
	temp order_details%ROWTYPE;
	
BEGIN

	--SELECT Max_Order_Amt INTO temp FROM order_details where code = productCode;

	--IF temp=NULL
	--THEN
	
		SELECT Discount INTO discnt 
			FROM order_details
				WHERE code = productCode AND orderAmt >= Min_Order_Amt AND Max_Order_Amt = NULL; 
		
	--ELSE

	--	SELECT Discount INTO discnt 
	--		FROM order_details
	--			WHERE code = productCode AND orderAmt BETWEEN Min_Order_Amt AND Max_Order_Amt ;

	--END IF;

	IF discnt=NULL
	THEN
		DBMS_OUTPUT.PUT_LINE('Product Not Found');
	ELSE
		result:=orderAmt*discnt;
		result:=orderAmt-result;
		DBMS_OUTPUT.PUT_LINE('NET ORDER AMOUNT :: '||result);
	END IF;


	EXCEPTION
		WHEN NO_DATA_FOUND
		THEN
			DBMS_OUTPUT.PUT_LINE('Product Not Found');			
END;
/