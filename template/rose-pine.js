let url = chrome.runtime.getURL("rose-pine.css");

fetch(url).then(r => r.text()).then(css => chrome.devtools.panels.applyStyleSheet(css));
