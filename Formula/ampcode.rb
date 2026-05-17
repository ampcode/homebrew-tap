class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778989718-g339de8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778989718-g339de8/amp-darwin-arm64"
      sha256 "53f119ad9a32698a35d494c42ffd42c2b0eddd2084f39a15185db1df78a40940"
    else
      url "https://static.ampcode.com/cli/0.0.1778989718-g339de8/amp-darwin-x64"
      sha256 "70ef204cd85e8181064c8e6d6be9b776bacdccc8eddeb006ef327568dea82f8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778989718-g339de8/amp-linux-arm64"
      sha256 "54946a2e6f0fa93730cad373c8e9be9bbc456c75edd32fdc342101a65a8341e3"
    else
      url "https://static.ampcode.com/cli/0.0.1778989718-g339de8/amp-linux-x64"
      sha256 "1b6c079e70b88fef804e8b13c15385f7b2084ab67ed790aeb5fcd75826e8633a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
