class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790092836-g666022"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790092836-g666022/amp-darwin-arm64"
      sha256 "0e6e19ddc0d38c50ddc6ea0acb73a6c735dd4ee57396a609414c11900b4d803d"
    else
      url "https://static.ampcode.com/cli/0.0.1790092836-g666022/amp-darwin-x64"
      sha256 "1838248bed05db76cb0c6e99c3ee2bf2ded69d7884e235e4f8abb3b7e5183780"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790092836-g666022/amp-linux-arm64"
      sha256 "82f2c25a5da90e974c60efde417ecae1827347aa5dfd1190e88e41e96a02c28b"
    else
      url "https://static.ampcode.com/cli/0.0.1790092836-g666022/amp-linux-x64"
      sha256 "5418cfe906b6040565d9ef07ecd7887981d04ca36f16ae62571e40608597bfba"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
