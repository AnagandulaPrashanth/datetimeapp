var start = moment().startOf('day');
    var end = moment();
    $('#datetime_filter').daterangepicker({
        "timePicker": true,
        timePickerIncrement: 30,
        locale: {
            format: 'MM/DD/YYYY h:mm A'
        },
        "opens": "left",
        startDate: start,
        endDate: end,
        ranges: {
           'today': [moment().startOf('day'), moment().add(1, 'day').startOf('day')],
           'yesterday': [moment().subtract(1, 'days').startOf('day'), moment().startOf('day')],
           'last 4 days': [moment().subtract(3, 'days').startOf('day'), moment()],
           'last 7 days': [moment().subtract(6, 'days').startOf('day'), moment()],
           'last 14 days': [moment().subtract(13, 'days').startOf('day'), moment()],
           'last 30 days': [moment().subtract(29, 'days').startOf('day'), moment()],
           'today last year': [moment().subtract(1, 'year').startOf('day'), moment().subtract(1, 'year')],
           'tomorrow last year': [moment().subtract(1, 'year').add(1, 'day'), moment().subtract(1, 'year').add(1, 'day')],
           'next 7 days last year': [moment().subtract(1, 'year').add(1, 'day'), moment().subtract(1, 'year').add(7, 'day')]
        }
    }, cb);











