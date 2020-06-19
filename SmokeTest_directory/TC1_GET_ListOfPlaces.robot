*** Settings ***
Library  RequestsLibrary


*** Variables ***
${base_url} skyscanner-skyscanner-flight-search-v1.p.rapidapi.com
${querry} Atlanta
${country} GA
${currency} USD
${local} en-US

*** Test Cases ***
Get_PlaceID
   create session  session_getPlaceID ${base_url}
   ${body}=  create dictionary  querystring=Atlanta
   ${resolt}=  get request  session_getPlaceID /apiservices/autosuggest/v1.0/${COUNTRY}/${CURRENCY}/${LOCAL} data=${body}
   ${statusCodeInString}=  convert to string  ${resolt.status_code}
   should be equal  ${statusCodeInString}  200


