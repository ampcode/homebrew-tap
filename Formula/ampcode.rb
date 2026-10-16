class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792123242-g03edc7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792123242-g03edc7/amp-darwin-arm64"
      sha256 "b9189a785fdf0e7aa92e085147c3e636eef52cb13ad5e2657ca17ad51afa97fa"
    else
      url "https://static.ampcode.com/cli/0.0.1792123242-g03edc7/amp-darwin-x64"
      sha256 "477850e5fffbe057bc334e52e75a9fee21e1b575f43f74f6fa4831717e03114f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792123242-g03edc7/amp-linux-arm64"
      sha256 "55f8c505d5edf1a9f72c53072526f4e02154372f7c52e2b084293fa892ab98c1"
    else
      url "https://static.ampcode.com/cli/0.0.1792123242-g03edc7/amp-linux-x64"
      sha256 "bca77383d391b795ea5534f0353943bb048eb51f556e250dc7a94a86b1c9f84f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
