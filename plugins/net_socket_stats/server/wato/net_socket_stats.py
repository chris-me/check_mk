register_check_parameters(
    subgroup_applications,
    "net_socket_stats",
    _("Network Socket Statistics"),
    Tuple(
        title = _("Parameters"),
        elements = [
            Integer(title = _("Warning if number of total sockets is above"), default_value = 2000),
            Integer(title = _("Critical if number of total sockets is above"), default_value = 3000),
        ]
    ),
    TextAscii(
        title = _("Network Socket Statistics")
    ),
    match_type = 'first',
)

