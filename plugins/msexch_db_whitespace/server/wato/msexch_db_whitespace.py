register_check_parameters(
    subgroup_applications,
    "msexch_db_whitespace",
    _("Microsoft Exchange Database Whitespace"),
    Tuple(
        title = _("Parameters"),
        elements = [
            Integer(title = _("Warning if below (in MB)"), default_value = 20),
            Integer(title = _("Critical if below (in MB)"), default_value = 10),
        ]
    ),
    TextAscii(
        title = _("Mailbox Database")
    ),
    match_type = 'first',
)
