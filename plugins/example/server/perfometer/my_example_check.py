def perfometer_my_example_check(row, check_command, perf_data):
    # For debugging:
    html = '<table><tr>' + perfometer_td(20, '#fff')
    html += perfometer_td(80, '#ff0fff') + '</tr></table>'
    #return 'Hello World! :-)', html
    #return repr(check_command), html

    curr_val = int(perf_data[0][1])
    max_val = int(perf_data[0][6])
    curr_percent = curr_val * 100 / max_val
    warn = int(perf_data[0][3])
    crit = int(perf_data[0][4])
    if curr_val >= crit:
        color = "#ff0000"
    elif curr_val >= warn:
        color = "#ffff00"
    else:
        color = "#00ff00"
    return curr_val, perfometer_linear(curr_percent, color)

perfometers['check_mk-my_example_check'] = perfometer_my_example_check

