class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790280054-g69c3da"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790280054-g69c3da/amp-darwin-arm64"
      sha256 "49bf26faa2bcbe7943cc05f7775c43488f65dd241a0019790a314952a6ee2c04"
    else
      url "https://static.ampcode.com/cli/0.0.1790280054-g69c3da/amp-darwin-x64"
      sha256 "22b8fe6751adf6b431c0c8e86397ffd39b52ce3e237d6c3c78d2c29461829bdc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790280054-g69c3da/amp-linux-arm64"
      sha256 "19345509f789364b3750cbf97c04271f0c62de305c38f1da4905bf538fe08d53"
    else
      url "https://static.ampcode.com/cli/0.0.1790280054-g69c3da/amp-linux-x64"
      sha256 "4344fdef48390b035d10bf5c97c72675b8d284d4d7c47290416de6db0062dced"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
