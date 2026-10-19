class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792368068-g91990d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792368068-g91990d/amp-darwin-arm64"
      sha256 "3c4fb7cdc89bb3f65ed8716aaae144a99e79dac46d3fc4faaf4c1bc5c9b325cb"
    else
      url "https://static.ampcode.com/cli/0.0.1792368068-g91990d/amp-darwin-x64"
      sha256 "b0f89635d8bc476c039973ad23172819519646d29a0a18e3170713e92aba8986"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792368068-g91990d/amp-linux-arm64"
      sha256 "3990104d31b522a29f4ff0b00fe1f2507a4881699ef7d6e865ddd12c2c65417c"
    else
      url "https://static.ampcode.com/cli/0.0.1792368068-g91990d/amp-linux-x64"
      sha256 "9fb46200231f3caf9defe6e0132a9652acd0e2c665dc8aff7b9cc7847fbcadb4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
