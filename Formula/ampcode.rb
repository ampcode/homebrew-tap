class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781370323-g977781"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781370323-g977781/amp-darwin-arm64"
      sha256 "77d8660c619357701f7ec1dc58346bebc9156efad905f283615000bab38abe45"
    else
      url "https://static.ampcode.com/cli/0.0.1781370323-g977781/amp-darwin-x64"
      sha256 "ea06ca993f1b3d57bf43367e73ac43b384672caa90255985dc5bbf5e75b83f36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781370323-g977781/amp-linux-arm64"
      sha256 "b4f1738bd55a41bbae7a6a19e49ac9d5c38b7fa229d2b07c70e475af7d850b37"
    else
      url "https://static.ampcode.com/cli/0.0.1781370323-g977781/amp-linux-x64"
      sha256 "97bae60370d2b69b48d043a36d313c1858a7bbc55d417a98f35d42819b02803e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
