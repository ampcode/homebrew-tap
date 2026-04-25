class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777104071-gcdb6ac"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777104071-gcdb6ac/amp-darwin-arm64"
      sha256 "6dfe86830c6c5c48575a0f9ad2aa8937c443ea434eb4ccdbfc3aa32551b96e64"
    else
      url "https://static.ampcode.com/cli/0.0.1777104071-gcdb6ac/amp-darwin-x64"
      sha256 "26d3136e245087e738123b00e26ed99c3212cb5ef491c4e595e3a360a847df57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777104071-gcdb6ac/amp-linux-arm64"
      sha256 "b2ce2768f64064a7ab7d443cca15fda62ea72b2d90e38c7a9c6a191d28c4a01e"
    else
      url "https://static.ampcode.com/cli/0.0.1777104071-gcdb6ac/amp-linux-x64"
      sha256 "4ba38c526dd45a05c85ca10c05f3d7f06ec1ee2fb109e16e77b5c84eac22d0a3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
