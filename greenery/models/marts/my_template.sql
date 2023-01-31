{% set payment_methods = ["bank_transfer", "credit_card", "gift_card"] %}

select
	{% for payment_method in payment_methods %}
	'{{payment_method}}' as {{ payment_method }}_method,
	{% endfor %}
	{{ add_a_hundred(1) }}