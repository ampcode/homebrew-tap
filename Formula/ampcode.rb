class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783504389-g0a07a6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783504389-g0a07a6/amp-darwin-arm64"
      sha256 "accdccd450fa13300cf4cd7855aaf5dff1303c53dd1c582358afa3df6d4da087"
    else
      url "https://static.ampcode.com/cli/0.0.1783504389-g0a07a6/amp-darwin-x64"
      sha256 "d8627d4b6909615b8d2f50682c91b6e260b1a3ae0aca9192c4d56bc4285db60d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783504389-g0a07a6/amp-linux-arm64"
      sha256 "153293048d153d4b433a78a773027592af2fa23f593d2f21a26a70e96c3706de"
    else
      url "https://static.ampcode.com/cli/0.0.1783504389-g0a07a6/amp-linux-x64"
      sha256 "3639dad995bfc896548e5a55a46f24ad7ceb1a857d63e6496e7862f3febba629"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
