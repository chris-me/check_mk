register_check_parameters(
    subgroup_applications,
    "my_example_check",
    _("Some example check"),
    Tuple(
        title = _("For demo purposes"),
        elements = [
            Integer(title = _("Warning if above"), default_value = 350),
            Integer(title = _("Critical if above"), default_value = 650),
        ]
    ),
    TextAscii(
        title = _("Example Item name"),
        help = _("Some useful help text."),
    ),
    match_type = 'first',
)
