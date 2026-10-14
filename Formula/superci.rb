# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.18.1.tgz"
      sha256 "489fe4abf5042a7b6f3c3624a53f4a9f80c6a26f8adc0d52fb2da460203df4ac"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.18.1.tgz"
      sha256 "ace57283ca4ac37dcf683c61fa774dc58defe9b62d197481369ade8f6567473d"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.18.1.tgz"
      sha256 "928e12ed8d4fa1622c1ce9fa7113e6f0f895fadab5a3b28346196adb1120d299"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.18.1.tgz"
      sha256 "fa366ba7bd62b6fcfa2bf0a13fe9aca0caae8a68c971c83dd7f9f175c93f42be"
    end
  end

  def install
    # npm's archive holds the program under package/, which Homebrew takes away when it unpacks.
    bin.install "superci"
  end

  test do
    assert_equal "superci #{version}", shell_output("#{bin}/superci --version").strip
  end
end
