{%- extends 'full.tpl' -%}

{% block output_group %}
    {%- if not cell.metadata.get('collapsed', False) -%}
        {{ super() }}
    {%- endif -%}
{% endblock output_group %}
