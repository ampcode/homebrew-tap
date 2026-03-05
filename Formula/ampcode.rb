class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772690947-gea623d"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772690947-gea623d/amp-darwin-arm64"
      sha256 "b7d3c6578aa0a0533aeb4e5a66ff8abe0ca87e08066b9d88337fe7ce59ea11b1"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772690947-gea623d/amp-darwin-x64"
      sha256 "95c1c2af20b589d7e04413934bcfd78f35fcb27b8135fa33d54a5f30d0d64238"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772690947-gea623d/amp-linux-arm64"
      sha256 "f8c49efa26cbbb0c9c1cf9d9a584d468031c37adf98122242090345a735ad7f8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772690947-gea623d/amp-linux-x64"
      sha256 "747c5c7f6228bd3ddf3a2958e144e951bc636897481b12b7b3fcc05b3ef522b8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
