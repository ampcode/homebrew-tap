class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783528170-gf47634"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783528170-gf47634/amp-darwin-arm64"
      sha256 "8f73f1d162b45715fa78bf0c7a4fb266ffdd097e493b7cf389066ca55a039f6e"
    else
      url "https://static.ampcode.com/cli/0.0.1783528170-gf47634/amp-darwin-x64"
      sha256 "4fe6037b95bb6029606cfd9465efac7e2fe1b54ceb3c54df86b00e8885d74b75"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783528170-gf47634/amp-linux-arm64"
      sha256 "bd36dd5e83550a357a075c9f70910d331eb910f7cdacbe2b37f376ca031cc3d4"
    else
      url "https://static.ampcode.com/cli/0.0.1783528170-gf47634/amp-linux-x64"
      sha256 "ec0adf36ca84823bac13c80ae37ab8885b4f34dba363eea952f0c7b2801edddb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
