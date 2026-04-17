class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776384655-g361626"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776384655-g361626/amp-darwin-arm64"
      sha256 "44ce5f9a283efe1227679a33178eba967d7a5c248e7bcc91fbb1edb01e4dd7b9"
    else
      url "https://static.ampcode.com/cli/0.0.1776384655-g361626/amp-darwin-x64"
      sha256 "915d1c7390efbb0b8fc080ba1ed54f7f0c9a9b9f27a73ba753c0919a3a0d3f09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776384655-g361626/amp-linux-arm64"
      sha256 "9f7a376a7e19ce10a9777e9d554bbb168616bfb99f0947f69c823d9b19f19a71"
    else
      url "https://static.ampcode.com/cli/0.0.1776384655-g361626/amp-linux-x64"
      sha256 "8fe18cf40c8741d602b8896c4b0f9e7fd5bdb0d8a44ad19580b385f1307fb513"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
