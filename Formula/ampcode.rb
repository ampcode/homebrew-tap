class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787270580-gc92d4c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787270580-gc92d4c/amp-darwin-arm64"
      sha256 "1a0f3bdb0b3578f9ea3c68c70d93c98cc82a6d660db16e612b2a99ec53b79668"
    else
      url "https://static.ampcode.com/cli/0.0.1787270580-gc92d4c/amp-darwin-x64"
      sha256 "02844112987e4c028a8e989128138793a808480cc20b0919b735619a890628df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787270580-gc92d4c/amp-linux-arm64"
      sha256 "524565e91777cd4ecc0a18b5e2499175970b2ca1b917f4237d8f28142c04331e"
    else
      url "https://static.ampcode.com/cli/0.0.1787270580-gc92d4c/amp-linux-x64"
      sha256 "b921cb9b488dff976b40a38e4847c6cd5b6da371057aaaf23130a27148d4fcdd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
