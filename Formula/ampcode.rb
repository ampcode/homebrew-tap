class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786406864-g1583b9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786406864-g1583b9/amp-darwin-arm64"
      sha256 "a244f829ef3366b6116e6f50439d106aeb6f6eecd45a643737d41f3148086287"
    else
      url "https://static.ampcode.com/cli/0.0.1786406864-g1583b9/amp-darwin-x64"
      sha256 "39f3e7f8d4d78f48bc08ad7d5777e7c9001bb131e82747de0495c2499c953d94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786406864-g1583b9/amp-linux-arm64"
      sha256 "5b5934cb9393bccb574db828d1be763bf1c95e14700f43b2afb9b4cd9b4e20ed"
    else
      url "https://static.ampcode.com/cli/0.0.1786406864-g1583b9/amp-linux-x64"
      sha256 "f7171a9e8c107f1dd147c9e34529825431b592107dc1288f31399d54935e146b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
