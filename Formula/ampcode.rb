class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787829336-g289152"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787829336-g289152/amp-darwin-arm64"
      sha256 "feedd501856be4ad0d158e7dc0f34c35a5869826ea4f01a4710742db7642672f"
    else
      url "https://static.ampcode.com/cli/0.0.1787829336-g289152/amp-darwin-x64"
      sha256 "eb44b5a5df1faff6e18507523a71035b9180cae5c82a52883b9903988c65b00a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787829336-g289152/amp-linux-arm64"
      sha256 "7662134a13ad5fb5511e6fdbbbb333b3a5d8add84a0a7f0148fc2bcf5842eb97"
    else
      url "https://static.ampcode.com/cli/0.0.1787829336-g289152/amp-linux-x64"
      sha256 "b74cb16a85a96ba6ebc14f5458b94ae525c88eef25a5ef71accc682d391b080a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
