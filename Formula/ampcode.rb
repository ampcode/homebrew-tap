class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777133346-g44f4b3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777133346-g44f4b3/amp-darwin-arm64"
      sha256 "dd03fb5f88b8e4e6258682459ab2673da36020fbb9547efcb7cef1caeed34ddd"
    else
      url "https://static.ampcode.com/cli/0.0.1777133346-g44f4b3/amp-darwin-x64"
      sha256 "807b7499c0e2ae060dac81836dba49da8372d53e2701b8408ae11d3f904e9637"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777133346-g44f4b3/amp-linux-arm64"
      sha256 "24734ca0c840c1ffd65664dfe9f6456ff120e46279ed3dfdff5f5e1575142f32"
    else
      url "https://static.ampcode.com/cli/0.0.1777133346-g44f4b3/amp-linux-x64"
      sha256 "7914bfcd00edb659638e7b8c5c0b2e93de31a7054ec60fde52e3349d44239363"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
