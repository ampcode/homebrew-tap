class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794139239-ga22467"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794139239-ga22467/amp-darwin-arm64"
      sha256 "145c9fb37a217762aab71af91acb4c48373bc9d42f505a875e7cd4db1cb2752c"
    else
      url "https://static.ampcode.com/cli/0.0.1794139239-ga22467/amp-darwin-x64"
      sha256 "013acd095e4becc99897a3414f4b5387cbf9c7ad9275b7065c3a36c9193ab7f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794139239-ga22467/amp-linux-arm64"
      sha256 "dd660f6354c6fe9e152bb47c0a33d7c5f7d59a78c4fcb2ac240cc93199ca1655"
    else
      url "https://static.ampcode.com/cli/0.0.1794139239-ga22467/amp-linux-x64"
      sha256 "190ea772c93478b85db7076e1619bf5cd695ff4112650f4ea20223c5efcd0ada"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
