class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781034998-g7dd2da"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781034998-g7dd2da/amp-darwin-arm64"
      sha256 "7ffb2120a67f682c40ba2b3066df59edea899c6182208fe754d3cded3b527605"
    else
      url "https://static.ampcode.com/cli/0.0.1781034998-g7dd2da/amp-darwin-x64"
      sha256 "efa968456bb70c1e89753a12a2a7f4f2edd334dd0fad6ab9f8f8e729c978d5f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781034998-g7dd2da/amp-linux-arm64"
      sha256 "89c0f82545d1f581032aa2896ebbb3db556acda4f2fac7a3fbdb2df0edf0d237"
    else
      url "https://static.ampcode.com/cli/0.0.1781034998-g7dd2da/amp-linux-x64"
      sha256 "017db1e7a82cc69dc5ad3602d38141ed79d5f697295d08f5ff24396690ad9691"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
