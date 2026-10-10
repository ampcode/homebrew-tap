class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791662459-g6be10b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791662459-g6be10b/amp-darwin-arm64"
      sha256 "5a79dd20238b04f0e5024cf9328d99c768c079b21ff6ba8df7f13747c4ad606a"
    else
      url "https://static.ampcode.com/cli/0.0.1791662459-g6be10b/amp-darwin-x64"
      sha256 "48bf4981b3ec27bad999aeb86057f21bc92bc96b7281363fc66a86cd2016ca8d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791662459-g6be10b/amp-linux-arm64"
      sha256 "76072f18ef105b302ef648e8885c1378f6f3d72f4e33cfe88b9ec69c74c12e46"
    else
      url "https://static.ampcode.com/cli/0.0.1791662459-g6be10b/amp-linux-x64"
      sha256 "0b95ba8c1b5dbb17fed2e548d1fd3823b7996a8ba3cafb4744a1f7f06d867035"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
