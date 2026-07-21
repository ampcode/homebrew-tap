class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784636905-gd7243a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784636905-gd7243a/amp-darwin-arm64"
      sha256 "57ce776921014459691ede2ca3fb80789f3e4a571ca3277495dc5579aa3ea71a"
    else
      url "https://static.ampcode.com/cli/0.0.1784636905-gd7243a/amp-darwin-x64"
      sha256 "d50979c78e009a8c3aba2ff9ff206039d81c29eb96159d243e15591c266ad6e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784636905-gd7243a/amp-linux-arm64"
      sha256 "623cb5f49b2bc36e7187830e583a4784179e5abbf25a104d17c328ecd3fb4803"
    else
      url "https://static.ampcode.com/cli/0.0.1784636905-gd7243a/amp-linux-x64"
      sha256 "29feb3c04194e618a0681123d9f86befcf9fffde2fdc9ccbc971b9bb9924058c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
