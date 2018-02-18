from mitmproxy import http


def response(flow: http.HTTPFlow) -> None:
    if "pagerduty.com" in flow.request.host:
        flow.response.headers['test'] = '___dd___'
        flow.response.set_text('привет_здесь')

