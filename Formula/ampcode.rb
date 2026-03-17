class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773755085-g37a36c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773755085-g37a36c/amp-darwin-arm64"
      sha256 "cd1408ad5f8ce78d19c66f32d797a97166c929af522f609e2bafe84fea97b300"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773755085-g37a36c/amp-darwin-x64"
      sha256 "9982bdfb8a2f9a639eaebb94df1fea21f488a1e08e94357be31f7f404838f78b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773755085-g37a36c/amp-linux-arm64"
      sha256 "c62e2246523505034afb130b344efa54458cadddf8d6e293bd9411bd8278c53b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773755085-g37a36c/amp-linux-x64"
      sha256 "ea4e7c10d151fe0f05a6e5434579fce1054a57982a31b106f3e9a1cf389bb20a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
