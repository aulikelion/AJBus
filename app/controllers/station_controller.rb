class StationController < ApplicationController
    def getInfo
        url = "https://map.kakao.com/bus/stop.json?busstopid=" + params[:id]
        @data = JSON.load(open(url))
        @eachInfo = Hash.new
        @arrivals = Hash.new
        @ended = Array.new

        @data['lines'].each do |line|
            lineNumber = line['name'].to_s.split(' ')[0]

            if line['busLineType'] == 'GENERAL' then
                lineTypeCode = '1'
                lineType = '시내버스'
            elsif line['busLineType'] == 'DIRECT' then
                lineTypeCode = '2'
                lineType = '직행좌석버스'
            elsif line['busLineType'] == 'RED' then
                lineTypeCode = '2'
                lineType = '광역버스'
            elsif line['busLineType'] == 'SEAT' then
                lineTypeCode = '3'
                lineType = '일반좌석버스'
            elsif line['busLineType'] == 'MAUL' then
                lineTypeCode = '4'
                lineType = '마을버스'
            elsif line['busLineType'] == 'INTERCITY' then
                lineTypeCode = '5'
                lineType = '시외버스'
            elsif line['busLineType'] == 'AIRPORT' then
                lineTypeCode = '6'
                lineType = '공항버스'
            end

            arrivalTimes = [line['arrival']['arrivalTime'] / 60, line['arrival']['arrivalTime2'] / 60]
            stopsBefore = [line['arrival']['busStopCount'], line['arrival']['busStopCount2']]
            isLastBus = [line['arrival']['lastVehicle'], line['arrival']['lastVehicle2']]
            
            if line['running'] then
                @arrivals[lineNumber] = arrivalTimes[0]
                @eachInfo[lineNumber] = { 'lineType' => lineType, 'lineTypeCode' => lineTypeCode, 'arrivalTimes' => arrivalTimes, 'stopsBefore' => stopsBefore, 'isLastBus' => isLastBus }
            else
                @ended << lineNumber
            end
        end

    end
end
