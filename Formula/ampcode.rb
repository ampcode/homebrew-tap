class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786954186-g9739da"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786954186-g9739da/amp-darwin-arm64"
      sha256 "347abe9adcb60fa5ecb9723648e8db941664a7de6a34097f7cf6e095c9f4fd0b"
    else
      url "https://static.ampcode.com/cli/0.0.1786954186-g9739da/amp-darwin-x64"
      sha256 "49c37881338eb4eaf0f62a86ccc70a4bee15c5f5e1175f4cf75838be13fa3017"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786954186-g9739da/amp-linux-arm64"
      sha256 "b186c733ff1821da4200a056dcfae7988ce3c511179e57e97efbc151358384e6"
    else
      url "https://static.ampcode.com/cli/0.0.1786954186-g9739da/amp-linux-x64"
      sha256 "036cafcf5c7910be2730ecd0efe44e558ab6ee2e9d8666e1955dbc8c3f163041"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
