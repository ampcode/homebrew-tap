class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788897629-geba12b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788897629-geba12b/amp-darwin-arm64"
      sha256 "0c1fb35c55b6742f3e1844ca8e3ee028e08d9e5a0f36d2bb06f697725dda1d95"
    else
      url "https://static.ampcode.com/cli/0.0.1788897629-geba12b/amp-darwin-x64"
      sha256 "1e52580bf35fa87862d2f0fbb492f6c64f6c466a942106a56a25b71429dc9ba0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788897629-geba12b/amp-linux-arm64"
      sha256 "52a2b8309808199e7864768863f1f789b5d227224190b6a0ceb7e58cd69609fe"
    else
      url "https://static.ampcode.com/cli/0.0.1788897629-geba12b/amp-linux-x64"
      sha256 "7a95c500f9a2feb61b1e29dd28b1c86b9f0085184ad2dcce67ed2719825cd4f4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
