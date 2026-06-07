class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780818304-g58b217"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780818304-g58b217/amp-darwin-arm64"
      sha256 "6ad2f07768b3c9e473b89ad230d4264eed3dcec367d3ff56e7b8fbbf8be08310"
    else
      url "https://static.ampcode.com/cli/0.0.1780818304-g58b217/amp-darwin-x64"
      sha256 "f12e0ee5262adb5bad05948c6ed9852744dab36b638afe4c18832e87cbfa2681"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780818304-g58b217/amp-linux-arm64"
      sha256 "e71a7d50f79e7e0413defff76ff3673792755ec277bdfb756a7bd6b593f003a0"
    else
      url "https://static.ampcode.com/cli/0.0.1780818304-g58b217/amp-linux-x64"
      sha256 "831b8884e82ab5c0e9366869d143d08266829337f1d2c9fa8753a5b3cc9eb19a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
