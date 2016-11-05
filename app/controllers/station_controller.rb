require 'nokogiri'
require 'open-uri'
class StationController < ApplicationController
    def getInfo
        station = Station.where(code: params[:id]).first
        @name = station.name
        @bound = station.bound
        
        base_url = "http://openapi.gbis.go.kr/ws/rest/"
        service = ["buslocationservice?serviceKey=", "busarrivalservice/station?serviceKey=", "busarrivalservice?serviceKey="]
        serviceKey = "yn8SpYJkbYBaQJV0SLIzuQgTelxHC%2FUABDIVXlYNKs3mNZy6s8aCsUwlX2FD7RbjZTQB1vtvsvaGNxaxlqTL1w%3D%3D&"
    
        url = base_url+service[1]+serviceKey+'stationId='+params[:id]
        data = Nokogiri::XML(open(url))
        @routeIds = data.xpath("//routeId")
        @locationNo1s = data.xpath("//predictTime1")
        @locationNo2s = data.xpath("//predictTime2")
        @prevLocation1s = data.xpath("//locationNo1")
        @remainSeat = data.xpath("//remainSeatCnt1")
    end
end
