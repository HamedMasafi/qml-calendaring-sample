# Qml calendaring support samples

This sample show how qml calendaring system workd
https://codereview.qt-project.org/#/c/188184

## Creating calendar object
```js   
Qt.calendar(string calendarName);

//example:
var calendar = Qt.calendar("persian");
```
```js
Qt.persianCalendar();
Qt.islamicCalendar();
Qt.gregoryCalendar();

//example:
var calendar = Qt.islamicCalendar();
```

##New function overloads
```js
Date.ctor(calendar, year, month, day);

Date.toLocaleString(locale);
Date.toLocaleString(locale, formatString);
Date.toLocaleString(locale, formatEnum);
Date.toLocaleString(calendar);
Date.toLocaleString(calendar, locale);
Date.toLocaleString(calendar, formatString);
Date.toLocaleString(calendar, formatEnum);
Date.toLocaleString(calendar, locale, formatString);
Date.toLocaleString(calendar, locale, formatEnum);

Date.toLocaleDateString(locale);
Date.toLocaleDateString(locale, formatString);
Date.toLocaleDateString(locale, formatEnum);
Date.toLocaleDateString(calendar);
Date.toLocaleDateString(calendar, locale);
Date.toLocaleDateString(calendar, formatString);
Date.toLocaleDateString(calendar, formatEnum);
Date.toLocaleDateString(calendar, locale, formatString);
Date.toLocaleDateString(calendar, locale, formatEnum);
```

### Samples
#### Create date from persian calendar
```js
var calendar = Qt.persianCalendar();
var date = new Date(calendar, 1395, 12, 1);
```

#### Show today's date in persian calendar
```js
var calendar = Qt.persianCalendar();
var date = new Date(/* extra parameteres here */);
var out1 = date.toLocalDateString(calendar);
var out1 = date.toLocalDateString(calendar, Qt.locale("fa-IR");

console.log(out1);
console.log(out2);
```