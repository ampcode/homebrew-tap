class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770300461-ge6a102"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770300461-ge6a102/amp-darwin-arm64"
      sha256 "545ce4e199c065999a69139ce9696b1e8af42d1ddcc2db1504f45fee521516af"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770300461-ge6a102/amp-darwin-x64"
      sha256 "e3d5a7dccd86f9086ea2db56b979ae3c13525802c0cc7fbdc0fd953a43f4cd57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770300461-ge6a102/amp-linux-arm64"
      sha256 "a238a6e5630dea19f0e0d6e9c4623901de17b625145e3bb948b15c715b02bb81"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770300461-ge6a102/amp-linux-x64"
      sha256 "e7235676acfd146fd9022965fae70a3ce93a52ad4b6ae36b417914e7693d5bfc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
