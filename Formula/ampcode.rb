class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780920432-gd95c80"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780920432-gd95c80/amp-darwin-arm64"
      sha256 "b832c45c51085d5cf31383b8b103f77ddcf4b2d07418f6b8167c0cc328eae58f"
    else
      url "https://static.ampcode.com/cli/0.0.1780920432-gd95c80/amp-darwin-x64"
      sha256 "d21931c6d7d63e4494bd31f13f0117cae09b5fbaf7e48b3cc41406e5d11101e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780920432-gd95c80/amp-linux-arm64"
      sha256 "08e817c20b81c4ace9ef2cacf626a1d2d3caa769eb4958a772b918baa95035e0"
    else
      url "https://static.ampcode.com/cli/0.0.1780920432-gd95c80/amp-linux-x64"
      sha256 "57ca6a5a10a945b494b9433fd571f2656f54daed16dcd10eb34d7cfcb79d2a0f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
