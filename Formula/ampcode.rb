class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778242835-gd91048"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778242835-gd91048/amp-darwin-arm64"
      sha256 "91ddbed2995e05cc59e2cc32cf71f5e545ac8a761a294247e279cb7657d020ab"
    else
      url "https://static.ampcode.com/cli/0.0.1778242835-gd91048/amp-darwin-x64"
      sha256 "9e242096926587286faaf70af4f7cd2148c86870a68324e102133aad8acf3070"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778242835-gd91048/amp-linux-arm64"
      sha256 "f3e1d745056cdb46a9a6982818dffac113251128264e72fc838174afafca7175"
    else
      url "https://static.ampcode.com/cli/0.0.1778242835-gd91048/amp-linux-x64"
      sha256 "8c7c58ca1bf5d702e92bca818bbb3a9bf40f36e14cdd5b37320b3ea897de2dd4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
