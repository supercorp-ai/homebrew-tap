# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.2.tgz"
      sha256 "cca3bf3a44f42e5b8b31c62ecfde8fecb29e066ba64ad83073ebcec354092edd"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.2.tgz"
      sha256 "df2b058654c59b8d25958c5321299241990d14df3702dde7fef1644c1e6143f8"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.2.tgz"
      sha256 "322f544ffa3dd123270f4bc1619404df54840661a0fdcfd494c4d0c6f66e5c1f"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.2.tgz"
      sha256 "42367d2973006d8a9be590c181f62c29f7e30b7219351a42efdfe517663f169f"
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
