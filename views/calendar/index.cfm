<cfoutput>
<link rel="stylesheet" href="//www.unpkg.com/fullcalendar@5.11.2/main.min.css">
<script src="//www.unpkg.com/fullcalendar@5.11.2/main.min.js"></script>

<script>
	document.addEventListener('DOMContentLoaded', function () {
		var calendarEl = document.getElementById('calendar');
		var calendar = new FullCalendar.Calendar(calendarEl, {
			themeSystem: 'bootstrap5',
			selectable: true,
			initialView: 'dayGridMonth',
			eventSources: [
				'/main/events'
			],
			dateClick: info => {
				console.log(info.dateStr);
			},
			select: selectionInfo => {
				console.dir(selectionInfo);
			}
		});
		calendar.render();
	});
</script>
<div id="calendar"></div>
</cfoutput>