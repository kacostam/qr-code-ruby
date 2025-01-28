# Write your solution here!
require "rqrcode"

# Use the RQRCode::QRCode class to encode some text
qr_code = RQRCode::QRCode.new("https://en.wikipedia.org/wiki/QR_code")

# Use the .as_png method to create a 500 pixels by 500 pixels image
png = qr_code.as_png({ :size => 500})

# Write the image data to a file
IO.binwrite("sometext.png", png.to_s)


# create a QR code to join a wifi
wifi_qr = RQRCode::QRCode.new("WIFI:T:WPA;S: Survivors crib;P:8edd3a99a48ef111;;")
png = wifi_qr.as_png({ :size => 500})

# Write the image data to a file
IO.binwrite("wifi.png", png.to_s)
