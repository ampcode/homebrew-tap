class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795723237-g18035f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795723237-g18035f/amp-darwin-arm64"
      sha256 "a2932b40c05bb5ad7ed59f452be1b7bcb48529c1f65bf598460a02a48420a6bc"
    else
      url "https://static.ampcode.com/cli/0.0.1795723237-g18035f/amp-darwin-x64"
      sha256 "746e5302260174706b137720308ae38b10fe2360c3f02ff945e31d4da0e85816"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795723237-g18035f/amp-linux-arm64"
      sha256 "0ff2bd2425e4c471a36a2c29054214d272e5cccaf5c7bbd4ff5c48b610da1afb"
    else
      url "https://static.ampcode.com/cli/0.0.1795723237-g18035f/amp-linux-x64"
      sha256 "7b6a01c404e3de9e674b24cec21c8565da6cd1fbcb9b65bc2ad161c12cd07338"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
