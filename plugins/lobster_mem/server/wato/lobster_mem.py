register_check_parameters(
    subgroup_applications,
    "lobster_mem",
    _("Lobster DataWizard Used Memory"),
    Tuple(
        title = _("Parameters"),
        elements = [
            Integer(title = _("Warning if used Memory is above (in Percent)"), default_value = 80),
            Integer(title = _("Critical if used Memory is above (in Percent)"), default_value = 90),
        ]
    ),
    TextAscii(
        title = _("Lobster Memory")
    ),
    match_type = 'first',
)

