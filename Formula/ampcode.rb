class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782378893-g337e3a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782378893-g337e3a/amp-darwin-arm64"
      sha256 "67f0339da10204e318f4315718da8b6f07fb167c2e97df58374b458f0e6f93a2"
    else
      url "https://static.ampcode.com/cli/0.0.1782378893-g337e3a/amp-darwin-x64"
      sha256 "5725d3fe77e31d2492ff45306f06f068d2490f87cd9ce705f101c1269e959f13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782378893-g337e3a/amp-linux-arm64"
      sha256 "a788f80874160faf51f595675f2a4c2bd2a48219fe15452cf58e25a4be374edf"
    else
      url "https://static.ampcode.com/cli/0.0.1782378893-g337e3a/amp-linux-x64"
      sha256 "9b761eb6790531851fd854b71b83b79acbb4c37b7d3e3f0e7f067f3d6c3e3ef2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
