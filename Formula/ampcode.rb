class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794700858-g0c3541"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794700858-g0c3541/amp-darwin-arm64"
      sha256 "723eeb72f6d40fb3639f483be17afd8bca29396839f375e0e01ea37aceb2639a"
    else
      url "https://static.ampcode.com/cli/0.0.1794700858-g0c3541/amp-darwin-x64"
      sha256 "7ccdd8421f3a74856adf85cea41edad810523606082b52c002038df1eaa7cade"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794700858-g0c3541/amp-linux-arm64"
      sha256 "9bf19fc7cf423933cdff0e71c4b60846e1808826baa0710554e65d2d6c04b563"
    else
      url "https://static.ampcode.com/cli/0.0.1794700858-g0c3541/amp-linux-x64"
      sha256 "4f87e238d4dbe182e6bc5cf83c11ec67e592526f057c088b0af3c43725afd7d1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
