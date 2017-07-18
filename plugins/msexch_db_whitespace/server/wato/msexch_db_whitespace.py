register_check_parameters(
    subgroup_applications,
    "msexch_db_whitespace",
    _("Microsoft Exchange Database Whitespace"),
    Tuple(
        title = _("Parameters"),
        elements = [
            Integer(title = _("Everything is OK as long as the database is less than (in MB)"), default_value = 500),
            Integer(title = _("Warning if Whitespace is below (in MB)"), default_value = 200),
            Integer(title = _("Critical if Whitespace is below (in MB)"), default_value = 100),
        ]
    ),
    TextAscii(
        title = _("Mailbox Database")
    ),
    match_type = 'first',
)
