class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792584044-g15483c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792584044-g15483c/amp-darwin-arm64"
      sha256 "bce1f0ca87cd7622a2538e121c1b7f5e5bc1439eaff6726e686b882b3c69c087"
    else
      url "https://static.ampcode.com/cli/0.0.1792584044-g15483c/amp-darwin-x64"
      sha256 "67470dfa8c3e74468a60bf0ae1e51a4406a923143ced1749df7301958120415f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792584044-g15483c/amp-linux-arm64"
      sha256 "4f7244f9468ad0e307b8bd370d60b84c43bf698d4ccbeeb32603094f2fb93eed"
    else
      url "https://static.ampcode.com/cli/0.0.1792584044-g15483c/amp-linux-x64"
      sha256 "5c66af7ba68374a90694fdeec7d7e3aa597ff209484d19829d33aab098758476"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
