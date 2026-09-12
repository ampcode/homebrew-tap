class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789253948-gda72aa"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789253948-gda72aa/amp-darwin-arm64"
      sha256 "ef4a220e259df54fccb5c208389e52adc109739537b43ab15247b25713572f7e"
    else
      url "https://static.ampcode.com/cli/0.0.1789253948-gda72aa/amp-darwin-x64"
      sha256 "0a98a230a4ff5ad3f63596d371bfdad0dbb8b025dda8fd83abf18bd590288725"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789253948-gda72aa/amp-linux-arm64"
      sha256 "524b97f98ca064fcdfacf9061c52cf5ac3d75513865c8fa47d215206efbc8b50"
    else
      url "https://static.ampcode.com/cli/0.0.1789253948-gda72aa/amp-linux-x64"
      sha256 "17d0ce79d9976f03cf00c4fd3edb74cde5ccaec3f4b75a37fe2f4aa1966a5066"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
