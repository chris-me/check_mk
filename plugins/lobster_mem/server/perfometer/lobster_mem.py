def perfometer_lobster_mem(row, check_command, perf_data):
    # For debugging:
    #html = '<table><tr>' + perfometer_td(20, '#fff')
    #html += perfometer_td(80, '#ff0fff') + '</tr></table>'
    #return 'Hello World! :-)', html
    #return repr(perf_data), html

    curr_val = int(perf_data[0][1])
    max_val = int(perf_data[0][6])
    warn = int(perf_data[0][3])
    crit = int(perf_data[0][4])
    #return repr(crit), html

    if curr_val >= crit:
        color = "#ff0000"
    elif curr_val >= warn:
        color = "#ffff00"
    else:
        color = "#00ff00"
    return curr_val, perfometer_linear(curr_val, color)

perfometers['check_mk-lobster_mem'] = perfometer_lobster_mem


