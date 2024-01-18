--INSERT a series of customers. We'll use address_id 607, which is a new address.
INSERT INTO public.customer(
	store_id, first_name, last_name, email, address_id, activebool, create_date, active)
	VALUES (1, 'Ted', 'Tedrickson', 'ted@domain,com', 607, true, CURRENT_TIMESTAMP, 1),
			(1, 'Fran', 'Tedrickson', 'fran@domain,com', 607, true, CURRENT_TIMESTAMP, 1),
			(1, 'Fred', 'Tedrickson', 'fred@domain,com', 607, true, CURRENT_TIMESTAMP, 1),
			(1, 'Sam', 'Tedrickson', 'sam@domain,com', 607, true, CURRENT_TIMESTAMP, 1);