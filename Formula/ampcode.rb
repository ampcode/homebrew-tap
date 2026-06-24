class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782309525-gca7162"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782309525-gca7162/amp-darwin-arm64"
      sha256 "57ee6c9d20699398cfa74788b43b1057bde5bab41dc3e0d6618cab520029553f"
    else
      url "https://static.ampcode.com/cli/0.0.1782309525-gca7162/amp-darwin-x64"
      sha256 "c2e81354bea8d1448e3584b525a24668e3e65dca523b80bae79b1bc602f3e5d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782309525-gca7162/amp-linux-arm64"
      sha256 "3ffb468313200a04f3b7d91d3baa9e2c535c4225fd747013aae15ff260df907a"
    else
      url "https://static.ampcode.com/cli/0.0.1782309525-gca7162/amp-linux-x64"
      sha256 "c0b32fde818199082d2e863d8aa832dcb4127f9e058a1d5827a8adfbb76080ae"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
