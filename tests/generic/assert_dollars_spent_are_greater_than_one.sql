{% test assert_dollars_spent_are_greater_than_one(model, column_name, group_by_column) %}

    select
        {{ group_by_column }}
        , avg( {{column_name}} ) as avg_dollars
    from {{ model }}
    group by 1
    having avg_dollars <= 1

{% endtest %}