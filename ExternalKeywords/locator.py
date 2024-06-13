import json
import jsonpath
def read_locator_from_json(locatorname):
    f=open('C:/Users/Hello Soumya/PycharmProjects/robotframeworkproject/JsonFiles/elements.json')
    resource = json.loads(f.read())
    value=jsonpath.jsonpath(resource.locatorname)
    return value[0]