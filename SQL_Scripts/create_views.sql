CREATE OR REPLACE VIEW view_host_listings AS
SELECT t.listing_id AS "ID", t.listing_name AS "Name", t.listing_type AS "Type", h.first_name || ' ' || h.last_name AS "Host Name", h.type AS "Host Type"
FROM listings t JOIN hosts h ON t.hosts_host_id = h.host_id;

CREATE OR REPLACE VIEW view_reservation_mem_deals AS
SELECT r.reservation_id AS "Reservation ID", m.deal_id AS "Deal ID", m.deal_name AS "Deal Name"
FROM reservations r JOIN membership_deals m ON r.membership_deals_deal_id = m.deal_id;

CREATE OR REPLACE VIEW view_reservation_payments AS
SELECT p.payment_id AS "Payment ID", p.payment_date AS "Date", r.reservation_id AS "Reservation ID", r.guests_guest_id AS "Guest ID"
FROM payments p JOIN reservations r ON p.reservations_reservation_id = r.reservation_id;
