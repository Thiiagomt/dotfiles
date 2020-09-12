#!/usr/bin/env python

from lxml import html
import requests

lat = "-20.9072"
lng = "-48.6424"

resp = requests.get("https://darksky.net/forecast/{},{}/ca12/en".format(lat, lng))
tree = html.fromstring(resp.content)

summary = tree.cssselect("span.summary.swap")
high = tree.cssselect("a[data-day=\"0\"] span.maxTemp")
low = tree.cssselect("a[data-day=\"1\"] span.minTemp")

print(
        summary[0].text_content(),
        "↑" + high[0].text_content(),
        "↓" + low[0].text_content())